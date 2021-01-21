package org.studyeasy.model;

public class User {
	private String name,gender,sports,fruit,essay,visited[];

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", gender=" + gender + "]";
	}

	public String getSports() {
		return sports;
	}

	public void setSports(String sports) {
		this.sports = sports;
	}

	public String getFruit() {
		return fruit;
	}

	public void setFruit(String fruit) {
		this.fruit = fruit;
	}

	public String getEssay() {
		return essay;
	}

	public void setEssay(String essay) {
		this.essay = essay;
	}

	public String[] getVisited() {
		return visited;
	}

	public void setVisited(String visited[]) {
		this.visited = visited;
	}
	
}
